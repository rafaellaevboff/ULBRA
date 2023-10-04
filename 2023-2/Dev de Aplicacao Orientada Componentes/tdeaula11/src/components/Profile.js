import Avatar from './Avatar'

const Profile = ({ profileData }) => {
    const css = {listStyle:"none"}
    return (
      <div className="profile-card">
        <Avatar imageUrl={profileData.image} />
        <h2>{profileData.name}</h2>
        <p>Profissão: {profileData.profession}</p>
        <ul style={css}>
          <li>Prêmios: {profileData.awards}</li>
          <li>Descobertas: {profileData.discoveries}</li>
        </ul>
      </div>
    );
  };

export default Profile