/** @type {import('next').NextConfig} */
const nextConfig = {
  redirects: async () => {
    return [
      {
        source: '/:tenant/logout',
        destination: '/:tenant/auth/logout',
        permanent: true,
      },
    ];
  },
};

export default nextConfig;
