import { notFound } from 'next/navigation';

import { Login } from './login';
import { FORM_TYPES } from '@/app/form-types';
import { getSupabaseAdminClient } from '@/supabase-utils/admin-client';

export default async function LoginPage({ searchParams, params: { tenant } }) {
  const supabaseAdmin = getSupabaseAdminClient();
  const { data, error } = await supabaseAdmin
    .from('tenants')
    .select('*')
    .eq('id', tenant)
    .single();

  console.log({ data });

  if (error) {
    console.log(`@error (${tenant})`, error);
    return notFound();
  }

  const wantsMagicLink = searchParams.magicLink === 'yes';
  const wantsPasswordRecovery = searchParams.passwordRecovery === 'yes';

  let formType = FORM_TYPES.PASSWORD_LOGIN;
  if (wantsMagicLink) {
    formType = FORM_TYPES.MAGIC_LINK;
  } else if (wantsPasswordRecovery) {
    formType = FORM_TYPES.PASSWORD_RECOVERY;
  }

  return (
    <Login formType={formType} tenant={tenant} tenantName={data.name} />
  );
}
