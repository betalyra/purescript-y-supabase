import SupabaseProvider from "y-supabase/dist/index";

export const ySupabaseProviderImpl = (yDoc, supabase, props) =>
  new SupabaseProvider(yDoc, supabase, props);
