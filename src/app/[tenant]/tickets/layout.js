import Nav from "./nav";
import TenantName from "./tenant-name";

export default function TicketsLayout(pageProps) {
  return (
    <>
      <section style={{ borderBottom: '1px solid gray' }}>
        <TenantName tenant={pageProps.params.tenant} />
        <Nav tenant={pageProps.params.tenant} />
      </section>

      <section>{pageProps.children}</section>
    </>
  );
}
