package com.rafaebofflarissacarlos.dojo

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.*
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class MainActivity : AppCompatActivity() {
    var lista = arrayListOf<Livro>()
    var listaLidos = arrayListOf<Livro>()
    var listaNaoLidos = arrayListOf<Livro>()
    var adapter= LivroAdapter(lista)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        Log.e("Ciclo de vida", "onCreate(): É a primeira função a ser executada em uma Activity. Geralmente é a responsável por carregar os layouts XML e outras operações de inicialização. É executada apenas uma vez.")

        var btnAdd = findViewById<Button>(R.id.btnAdd)

        btnAdd.setOnClickListener(View.OnClickListener {
            add()
        })

    }

    fun add(){
        val titulo = findViewById<EditText>(R.id.titulo)
        val paginas =findViewById<EditText>(R.id.paginas)
        val tipo =findViewById<EditText>(R.id.tipo)
        val autor =findViewById<EditText>(R.id.autor)
        val paginasLidas =findViewById<EditText>(R.id.paginasLidas)
        if(titulo.text.toString().length>1){
            val livro= Livro(titulo.text.toString(),paginas.text.toString().toInt(), paginasLidas.text.toString().toInt(), tipo.text.toString(),autor.text.toString())
            lista.add(livro)
            titulo.text.clear()
            paginas.text.clear()
            tipo.text.clear()
            autor.text.clear()
            initRecyclerView()
        }else{
            Toast.makeText(applicationContext,"Texto Curto", Toast.LENGTH_SHORT).show()
        }
    }

    private fun initRecyclerView(){
        var rvDados = findViewById<RecyclerView>(R.id.rvDados)
        rvDados.adapter = adapter

        val toggle: ToggleButton = findViewById(R.id.toggleButton)
        val layoutManager= LinearLayoutManager(this)
        rvDados.layoutManager=layoutManager
        toggle.setOnCheckedChangeListener { _, isChecked ->
            if (isChecked) {

            } else {

            }
        }
    }
}