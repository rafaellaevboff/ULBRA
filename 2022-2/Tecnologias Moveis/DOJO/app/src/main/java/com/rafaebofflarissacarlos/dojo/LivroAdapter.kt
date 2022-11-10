package com.rafaebofflarissacarlos.dojo

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.CheckBox
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.rafaebofflarissacarlos.dojo.Livro
import com.rafaebofflarissacarlos.dojo.R

class LivroAdapter (private val livros: List<Livro>): RecyclerView.Adapter<LivroAdapter.VH>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VH {
        val v= LayoutInflater.from(parent.context).inflate(R.layout.item,parent,false)
        val vh = VH(v)
        return vh
    }
    override fun getItemCount(): Int {
        return livros.size
    }
    override fun onBindViewHolder(holder: VH, position: Int) {

        var livro=livros[position]
        holder.titulo.text =livro.titulo
        holder.paginas.text=livro.paginas.toString()
        holder.tipo.text=livro.tipo
        holder.autor.text=livro.autor
        if(livro.lido) {
            holder.checkBox.isChecked = true
        }
    }
    class VH(view: View) : RecyclerView.ViewHolder(view) {
        var titulo = view.findViewById<TextView>(R.id.txtProduto)
        var paginas = view.findViewById<TextView>(R.id.txtValor)
        var tipo = view.findViewById<TextView>(R.id.txtQtd)
        var autor = view.findViewById<TextView>(R.id.editar)
        var checkBox = view.findViewById<CheckBox>(R.id.checkBox)
        init {
            // Define click listener for the ViewHolder's View.
            titulo = view.findViewById(R.id.txtProduto)
            paginas = view.findViewById(R.id.txtQtd)
            tipo= view.findViewById(R.id.txtValor)
            autor= view.findViewById(R.id.editar)
            checkBox= view.findViewById(R.id.checkBox)
        }
    }
}