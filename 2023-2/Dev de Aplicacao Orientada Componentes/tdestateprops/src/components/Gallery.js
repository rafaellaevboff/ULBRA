import ButtonNext from './ButtonNext';
import Header from './Header';
import ShowDetails from './ShowDetails';
import Image from './Image';
import { useState } from 'react';
import { data } from '../data';

function Gallery(){
    const [index, setIndex] = useState(0)

    let galleryData = data[index]

        
    function handleClickIndex(){
        if(index + 1 != data.length){
            setIndex(index + 1)
        }
        
    }

    return (
        <div style={{height: "400px", width: "100%"}}>
            <ButtonNext click={handleClickIndex}/>
            <Header title={galleryData.name} sizeList={data.length} index={index + 1}/>
            <ShowDetails description={galleryData.description}/>
            <Image urlImage={galleryData.url} alt={galleryData.alt}/>
        </div>
    )
}


export default Gallery;