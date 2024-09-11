/** @type {import('next').NextConfig} */
const nextConfig = {
  redirects: async () => {
    return [
      {
        source: '/logout',
        destination: '/auth/logout',
        permanent: true,
      },
    ];
  },
};

export default nextConfig;
