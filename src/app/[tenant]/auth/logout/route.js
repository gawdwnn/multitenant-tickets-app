import { NextResponse } from 'next/server';

import { getSupabaseCookiesUtilClient } from '@/supabase-utils/cookies-util-client';
import { buildUrl } from '@/utils/url-helpers';

export async function GET(request) {
  const supabase = getSupabaseCookiesUtilClient();
  await supabase.auth.signOut();
  return NextResponse.redirect(buildUrl('/', request.url));
}
