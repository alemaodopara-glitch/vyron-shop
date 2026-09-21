create extension if not exists pgcrypto;
create table if not exists public.products (
 id uuid primary key default gen_random_uuid(), name text not null, category text,
 price numeric(12,2) not null check(price >= 0), old_price numeric(12,2),
 image_url text, redirect_url text not null check(redirect_url ~ '^https?://'),
 description text, badge text, active boolean not null default true,
 created_at timestamptz not null default now(), updated_at timestamptz not null default now()
);
alter table public.products enable row level security;
create policy "public_read_active" on public.products for select using (active = true or auth.role()='authenticated');
create policy "admin_insert" on public.products for insert to authenticated with check (true);
create policy "admin_update" on public.products for update to authenticated using (true) with check (true);
create policy "admin_delete" on public.products for delete to authenticated using (true);