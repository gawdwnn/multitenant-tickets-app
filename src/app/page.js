import { Login } from "./login";

export default function LoginPage({ searchParams }) {
  const wantsMagicLink = searchParams.magicLink === "yes";
  return <Login isPasswordLogin={!wantsMagicLink} />;
}
