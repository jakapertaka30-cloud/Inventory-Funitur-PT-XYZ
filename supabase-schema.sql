create table if not exists public.products (
  id text primary key,
  name text not null,
  category text not null,
  supplier text not null default '',
  unit text not null default 'unit',
  price numeric not null default 0,
  opening integer not null default 0,
  min integer not null default 0,
  icon text not null default '□',
  tone text not null default ''
);

alter table public.products add column if not exists supplier text not null default '';

create table if not exists public.transactions (
  id text primary key,
  date date not null,
  product text not null,
  type text not null check (type in ('in', 'out')),
  qty integer not null check (qty > 0),
  ref text
);

alter table public.products enable row level security;
alter table public.transactions enable row level security;

create policy "public can read products" on public.products for select using (true);
create policy "public can insert products" on public.products for insert with check (true);
create policy "public can update products" on public.products for update using (true) with check (true);
create policy "public can delete products" on public.products for delete using (true);
create policy "public can read transactions" on public.transactions for select using (true);
create policy "public can insert transactions" on public.transactions for insert with check (true);
create policy "public can update transactions" on public.transactions for update using (true) with check (true);
create policy "public can delete transactions" on public.transactions for delete using (true);

alter publication supabase_realtime add table public.products;
alter publication supabase_realtime add table public.transactions;