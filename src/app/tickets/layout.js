import Nav from "./nav";
import TenantName from "./tenant-name";

export default function TicketsLayout(pageProps) {
  return (
    <>
      <section style={{ borderBottom: "1px solid gray" }}>
        <TenantName tenantName="Packt" />
        <Nav />
      </section>

      <section>{pageProps.children}</section>
    </>
  );
}
