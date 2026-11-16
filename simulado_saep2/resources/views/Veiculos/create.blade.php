<!DOCTYPE html>
<html>
<head>
    <title>Novo Veículo</title>
</head>
<body>

    <h1>Novo Veículo</h1>

    <form action="/veiculos" method="POST">

        @csrf

        <label>Numero da veiculo:</label>
        <input type="text" name="n_veiculo">

        <br><br>

        <label>marca:</label>
        <input type="text" name="marca">

        <br><br>


        <br><br>

        <label>Cliente:</label>

        <select name="cliente_id">

            <option value="">
                Selecione uma cliente
            </option>

            @foreach($clientes as $cliente)

                <option value="{{ $cliente->id }}">
                    {{ $cliente->nome }}
                </option>

            @endforeach

        </select>

        <br><br>

        <button type="submit">
            Cadastrar
        </button>

    </form>

    <br>

    <a href="/veiculos/listar">
        Voltar
    </a>

</body>
</html>