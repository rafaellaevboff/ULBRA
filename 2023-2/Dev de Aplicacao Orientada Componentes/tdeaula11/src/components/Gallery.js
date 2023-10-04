import Profile from './Profile'

const Gallery = ({ title, profiles }) => {
    return (
        <div className="gallery">
        <h1>{title}</h1>
        <div className="profile-list">
            {profiles.map((profile, index) => (
            <Profile key={index} profileData={profile} />
            ))}
        </div>
        </div>
    );
};

export default Gallery