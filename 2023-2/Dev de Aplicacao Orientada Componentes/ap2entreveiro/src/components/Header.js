import ImagensPerfil from "./ImagensPerfil";

const Header = ({nomeEvento, usuario}) => {
    
    return(
        <div className="header">
            <div style={{backgroundColor: 'lightblue', display: 'flex', justifyContent:'cemter'}}>
                <div style={{flex: 1}}>
                <ImagensPerfil imagemUrl={"https://scontent.fpoa2-1.fna.fbcdn.net/v/t39.30808-6/295211297_445917077543990_5833620739999901411_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFairom_YVb01gLKkRxaXkKHPJghOeNmJEc8mCE542YkUwzYmeqLICNSxurx8c6ttGsD6yoPfxJFktX7Q3TFtsd&_nc_ohc=uPm1eYrWMA8AX_uxEm-&_nc_ht=scontent.fpoa2-1.fna&oh=00_AfBG_AFlOdgI7hNlpl4-xw4TMNVfaDRVaTRTrVvXuo_kmA&oe=65309328"} tamanho={80}/>

                </div>
                
                <div>
                    <h1>{nomeEvento}</h1>
                </div>
                
            </div>
            
            <p>Seja bem vindo, {usuario}!</p>

        </div>
    )
}

export default Header;