import { createClient } from '@supabase/supabase-js';

// CAUTION: Use this admin client only for tasks requiring elevated permissions.
// For user-specific operations, use a client with lower privileges (e.g., browserClient.js).
// Never use this client for user authentication or session management.
export const getSupabaseAdminClient = () => {
  return createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.SUPABASE_SERVICE_ROLE_KEY,
    {
      auth: {
        persistSession: false,
      },
    }
  );
};
