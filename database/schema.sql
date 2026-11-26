-- QuickBite database schema (PostgreSQL / Supabase). Matches the data dictionary (Report §5.4).
create type user_role as enum ('customer','restaurant','admin');
create type order_status as enum ('pending_payment','placed','accepted','preparing','out_for_delivery','delivered','cancelled');
create type payment_status as enum ('created','success','failed','refunded');

create table users (
  user_id uuid primary key references auth.users(id),
  name varchar(80) not null,
  email varchar(100) unique not null,
  phone varchar(15),
  role user_role not null default 'customer',
  created_at timestamptz default now()
);

create table restaurants (
  restaurant_id serial primary key,
  name varchar(100) not null,
  address text not null,
  owner_id uuid references users(user_id),
  is_open boolean default true
);

create table menu_items (
  item_id serial primary key,
  restaurant_id int not null references restaurants(restaurant_id) on delete cascade,
  name varchar(100) not null,
  price numeric(8,2) not null check (price >= 0),
  category varchar(40),
  is_veg boolean,
  allergens text,
  is_available boolean default true,
  image_url text
);

create table cart_items (
  user_id uuid references users(user_id) on delete cascade,
  item_id int references menu_items(item_id) on delete cascade,
  quantity int not null check (quantity between 1 and 20),
  primary key (user_id, item_id)
);

create table coupons (
  coupon_id serial primary key,
  code varchar(15) unique not null,
  discount_type varchar(7) check (discount_type in ('percent','flat')),
  value numeric(8,2) not null check (value > 0),
  min_order numeric(8,2) default 0,
  expiry_date date not null,
  is_active boolean default true
);

create table orders (
  order_id serial primary key,
  user_id uuid not null references users(user_id),
  restaurant_id int not null references restaurants(restaurant_id),
  coupon_id int references coupons(coupon_id),
  subtotal numeric(8,2) not null,
  discount numeric(8,2) default 0,
  total numeric(8,2) not null,
  status order_status not null default 'pending_payment',
  delivery_address text not null,
  order_ref varchar(40) unique not null,   -- prevents duplicate orders on double click (NFR3)
  created_at timestamptz default now()
);

create table order_items (
  order_id int references orders(order_id) on delete cascade,
  item_id int references menu_items(item_id),
  quantity int not null check (quantity between 1 and 20),
  unit_price numeric(8,2) not null,
  primary key (order_id, item_id)
);

create table payments (
  payment_id serial primary key,
  order_id int not null references orders(order_id),
  gateway_payment_id varchar(60),
  amount numeric(8,2) not null,
  method varchar(10) check (method in ('online','cod')),
  status payment_status not null default 'created',
  paid_at timestamptz
);

-- Row Level Security: customers see only their own orders
alter table orders enable row level security;
create policy "own orders" on orders for select using (auth.uid() = user_id);
