# VYRON SHOP

Marketplace moderno com Next.js + Supabase. Paleta grafite, branco, violeta e turquesa.

## Configuração
1. Crie um projeto no Supabase.
2. Execute `supabase/schema.sql` no SQL Editor.
3. Em Authentication > Users, crie o usuário administrador.
4. Na Vercel, importe este repositório.
5. Configure `NEXT_PUBLIC_SUPABASE_URL` e `NEXT_PUBLIC_SUPABASE_ANON_KEY`.

O painel fica em `/admin`. Não coloque a chave service_role no navegador.
