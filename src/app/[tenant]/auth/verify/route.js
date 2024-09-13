import { NextResponse } from 'next/server';

import { getSupabaseCookiesUtilClient } from '@/supabase-utils/cookies-util-client';

export async function GET(request, { params }) {
  const { searchParams } = new URL(request.url);
  const hashed_token = searchParams.get('hashed_token');
  const isRecovery = searchParams.get('type') === 'recovery';

  const tenantUrl = (path) => buildUrl(path, params.tenant, request);
  const getRedirect = (path) => NextResponse.redirect(tenantUrl(path));

  let verifyType = 'magiclink';
  if (isRecovery) verifyType = 'recovery';
  
  const supabase = getSupabaseCookiesUtilClient();
  const { error } = await supabase.auth.verifyOtp({
    type: verifyType,
    token_hash: hashed_token,
  });

  if (error) {
    return getRedirect('/error?type=invalid_magiclink');
  } else {
    if (isRecovery) {
      return getRedirect('/tickets/change-password');
    } else {
      return getRedirect('/tickets');
    }
  }
}
