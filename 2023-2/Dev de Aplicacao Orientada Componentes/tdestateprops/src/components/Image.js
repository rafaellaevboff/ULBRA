function Image({urlImage, alt}){
    return(
        <img style={{paddingTop: "16px"}} src={urlImage} alt={alt} width={140} height={140}></img>
    )
}

export default Image;