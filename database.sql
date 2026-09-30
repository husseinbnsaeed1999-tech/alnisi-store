-- ALNiSi Store database starter schema
-- Run this in your hosted database SQL editor.
create table if not exists products (
 id bigint generated always as identity primary key,
 name text not null,
 price numeric,
 currency text default 'LYD',
 description text default '',
 image_url text default '',
 active boolean default true,
 created_at timestamptz default now()
);

create table if not exists store_settings (
 id bigint generated always as identity primary key,
 whatsapp text default '',
 whatsapp_message text default 'السلام عليكم، نبي نطلب: {product}',
 store_name text default 'ALNiSi Store',
 updated_at timestamptz default now()
);

create table if not exists payment_methods (
 id bigint generated always as identity primary key,
 name text not null,
 details text default '',
 active boolean default true,
 updated_at timestamptz default now()
);
