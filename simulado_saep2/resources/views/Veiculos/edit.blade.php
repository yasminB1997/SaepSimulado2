<!DOCTYPE html>
<html>
<head>
    <title>Editar Veiculo</title>
</head>
<body>

    <h1>Editar Veiculo</h1>

    <form action="/veiculos/{{ $veiculo->id }}" method="POST">

        @csrf
        @method('PUT')

        <label>Placa:</label>

        <input
            type="text"
            name="n_veiculo"
            value="{{ $veiculo->n_veiculo }}"
        >

        <br><br>

        <label>Marca:</label>

        <input
            type="text"
            name="bloco"
            value="{{ $veiculo->bloco }}"
        >

        <br><br>

        <label>Cliente:</label>

        <select name="cliente_id">

            @foreach($clientes as $cliente)

                <option
                    value="{{ $cliente->id }}"
                    {{ $veiculo->cliente_id == $cliente->id ? 'selected' : '' }}
                >
                    {{ $cliente->nome }}
                </option>

            @endforeach

        </select>

        <br><br>

        <button type="submit">
            Salvar
        </button>

    </form>

    <br>

    <a href="/veiculos/listar">
        Voltar
    </a>

</body>
</html>