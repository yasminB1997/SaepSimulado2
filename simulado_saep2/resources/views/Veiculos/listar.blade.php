<!DOCTYPE html>
<html>
<head>
    <title>Veiculos</title>
</head>
<body>

    <h1>Veiculos</h1>

    <a href="/principal">
        Voltar
    </a>

    <br><br>

    <a href="/veiculos/create">
        <button>Novo Veículos</button>
    </a>

    <br><br>

    <table border="1">

        <tr>
            <th>ID</th>
            <th>Numero Veiculo</th>
            <th>Bloco</th>
            <th>cliente</th>
            <th>Ações</th>
        </tr>

        @foreach($veiculos as $veiculo)

        <tr>

            <td>{{ $veiculo->id }}</td>

            <td>{{ $veiculo->placa }}</td>

            <td>{{ $veiculo->marca }}</td>

            <td>{{ $veiculo->modelo }}</td>

            <td>
                {{ $Veiculo->cliente->nome }}
            </td>

            <td>

                <a href="/veiculos/{{ $veiculo->id }}/edit">
                    Editar
                </a>

                <form
                    action="/veiculos/{{ $veiculo->id }}"
                    method="POST"
                    style="display:inline"
                >

                    @csrf
                    @method('DELETE')

                    <button type="submit">
                        Excluir
                    </button>

                </form>

            </td>

        </tr>

        @endforeach

    </table>

</body>
</html>