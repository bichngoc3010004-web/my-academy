-- Run this entire script in Supabase Dashboard > SQL Editor > New query
create table if not exists public.subjects (
 id uuid primary key default gen_random_uuid(), user_id uuid not null references auth.users(id) on delete cascade,
 name text not null, description text default '', icon text default '▤', created_at timestamptz default now()
);
create table if not exists public.lessons (
 id uuid primary key default gen_random_uuid(), user_id uuid not null references auth.users(id) on delete cascade,
 subject_id uuid not null references public.subjects(id) on delete cascade, title text not null,
 lesson_type text default 'Bài giảng', file_url text default '', note text default '', completed boolean default false, created_at timestamptz default now()
);
create table if not exists public.grades (
 id uuid primary key default gen_random_uuid(), user_id uuid not null references auth.users(id) on delete cascade,
 subject_id uuid not null references public.subjects(id) on delete cascade, title text not null,
 score numeric(4,2) not null check(score >= 0 and score <= 10), exam_date date, created_at timestamptz default now()
);
alter table public.subjects enable row level security;
alter table public.lessons enable row level security;
alter table public.grades enable row level security;
create policy "Users manage own subjects" on public.subjects for all to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Users manage own lessons" on public.lessons for all to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Users manage own grades" on public.grades for all to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
