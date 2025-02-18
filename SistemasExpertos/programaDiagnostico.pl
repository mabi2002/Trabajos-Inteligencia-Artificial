% Definición de síntomas, enfermedades y pesos
% Definición de síntomas, enfermedades y pesos
sintoma(covid, dolor_de_cabeza, 1).
sintoma(covid, fatiga, 2).
sintoma(covid, mialgias, 2).
sintoma(covid, dolor_abdominal, 1).
sintoma(covid, dolor_articular, 1).
sintoma(covid, nauseas_y_vomitos, 1).
sintoma(covid, fiebre, 2).
sintoma(covid, perdida_de_apetito, 1).
sintoma(covid, diarrea, 1).
sintoma(covid, dolor_de_garganta, 1).
sintoma(covid, dificultad_de_respirar, 3).
sintoma(covid, congestion_nasal, 2).
sintoma(covid, tos_seca, 3).
sintoma(covid, perdida_olfato_y_gusto, 3).
sintoma(covid, hemorragias, 1).
sintoma(covid, erupcion_cutanea, 1).
sintoma(covid, tos_productiva, 2).
sintoma(covid, confusion, 1).
sintoma(covid, neumonia, 3).
sintoma(covid, insuficiencia_respiratoria, 3).

sintoma(gripe, dolor_de_cabeza, 2).
sintoma(gripe, fatiga, 2).
sintoma(gripe, mialgias, 2).
sintoma(gripe, dolor_abdominal, 1).
sintoma(gripe, dolor_articular, 1).
sintoma(gripe, nauseas_y_vomitos, 1).
sintoma(gripe, fiebre, 2).
sintoma(gripe, perdida_de_apetito, 1).
sintoma(gripe, diarrea, 1).
sintoma(gripe, dolor_de_garganta, 1).
sintoma(gripe, dificultad_de_respirar, 2).
sintoma(gripe, congestion_nasal, 2).
sintoma(gripe, tos_seca, 2).
sintoma(gripe, perdida_olfato_y_gusto, 2).
sintoma(gripe, sudoracion, 1).
sintoma(gripe, escalofrios, 2).
sintoma(gripe, irritabilidad, 1).

sintoma(dengue, dolor_de_cabeza, 2).
sintoma(dengue, fatiga, 2).
sintoma(dengue, mialgias, 2).
sintoma(dengue, dolor_abdominal, 1).
sintoma(dengue, dolor_articular, 1).
sintoma(dengue, nauseas_y_vomitos, 1).
sintoma(dengue, fiebre, 3).
sintoma(dengue, perdida_de_apetito, 1).
sintoma(dengue, hemorragias, 2).
sintoma(dengue, erupcion_cutanea, 2).
sintoma(dengue, insuficiencia_renal, 3).
sintoma(dengue, dolor_retrococular, 3).
sintoma(dengue, shock, 3).
sintoma(dengue, hemorragia_interna, 3).
sintoma(dengue, cefalea_intensa, 3).
sintoma(dengue, sindrome_de_choque, 3).
sintoma(dengue, fiebre_prolongada, 2).

sintoma(tifoidea, dolor_de_cabeza, 2).
sintoma(tifoidea, mialgias, 2).
sintoma(tifoidea, dolor_abdominal, 1).
sintoma(tifoidea, dolor_articular, 1).
sintoma(tifoidea, nauseas_y_vomitos, 1).
sintoma(tifoidea, fiebre, 2).
sintoma(tifoidea, perdida_de_apetito, 1).
sintoma(tifoidea, diarrea, 2).
sintoma(tifoidea, hemorragias, 2).
sintoma(tifoidea, erupcion_cutanea, 1).
sintoma(tifoidea, confusion, 2).
sintoma(tifoidea, insuficiencia_renal, 2).
sintoma(tifoidea, sepse, 3).
sintoma(tifoidea, fiebre_prolongada, 2).
sintoma(tifoidea, neumonia, 2).
sintoma(tifoidea, delirio, 2).
sintoma(tifoidea, perforacion_intestinal, 3).
sintoma(tifoidea, meningitis, 3).
sintoma(tifoidea, insuficiencia_cardiaca, 3).

sintoma(malaria, dolor_de_cabeza, 2).
sintoma(malaria, fatiga, 2).
sintoma(malaria, mialgias, 2).
sintoma(malaria, dolor_abdominal, 2).
sintoma(malaria, dolor_articular, 1).
sintoma(malaria, nauseas_y_vomitos, 1).
sintoma(malaria, fiebre, 3).
sintoma(malaria, perdida_de_apetito, 1).
sintoma(malaria, hemorragias, 2).
sintoma(malaria, erupcion_cutanea, 1).
sintoma(malaria, tos_productiva, 1).
sintoma(malaria, sudoracion, 2).
sintoma(malaria, palidez, 2).
sintoma(malaria, ictericia, 3).
sintoma(malaria, anemia, 2).
sintoma(malaria, convulsiones, 2).

sintoma(neumonia, dolor_de_cabeza, 2).
sintoma(neumonia, fatiga, 2).
sintoma(neumonia, dolor_abdominal, 1).
sintoma(neumonia, dolor_articular, 1).
sintoma(neumonia, nauseas_y_vomitos, 1).
sintoma(neumonia, fiebre, 3).
sintoma(neumonia, perdida_de_apetito, 1).
sintoma(neumonia, diarrea, 1).
sintoma(neumonia, dificultad_de_respirar, 3).
sintoma(neumonia, tos_productiva, 3).
sintoma(neumonia, sudoracion, 1).
sintoma(neumonia, confusion, 2).
sintoma(neumonia, sepse, 3).
sintoma(neumonia, neumonia, 3).
sintoma(neumonia, escalofrios, 2).
sintoma(neumonia, cianosis, 2).

sintoma(influenza, dolor_de_cabeza, 2).
sintoma(influenza, fatiga, 1).
sintoma(influenza, mialgias, 1).
sintoma(influenza, fiebre, 3).
sintoma(influenza, dolor_de_garganta, 1).
sintoma(influenza, congestion_nasal, 2).
sintoma(influenza, tos_seca, 2).


% Dinámico para almacenar síntomas del paciente
:- dynamic tiene_sintoma/1.

% Cálculo del puntaje total para cada enfermedad
diagnosticar(Enfermedad, PuntajeTotal) :-
    findall(Peso, (sintoma(Enfermedad, Sintoma, Peso), tiene_sintoma(Sintoma)), Pesos),
    (   Pesos = [] -> 
        PuntajeTotal = 0
    ;   sum_list(Pesos, PuntajeTotal)
    ).

% Función para encontrar la enfermedad con el puntaje más alto
mejor_diagnostico :-
    Enfermedades = [covid, gripe, influenza, malaria, neumonia, dengue, tifoidea],
    findall(Puntaje-Enfermedad,
            (member(Enfermedad, Enfermedades), diagnosticar(Enfermedad, Puntaje)),
            Puntajes),
    sort(Puntajes, PuntajesOrdenados),
    reverse(PuntajesOrdenados, PuntajesOrdenadosDesc),

    (   PuntajesOrdenadosDesc = [MejorPuntaje-MejorEnfermedad, SegundoPuntaje-_|_] ->
        % Calcular porcentaje de cada enfermedad con respecto al puntaje total
        SumaTotal is MejorPuntaje + SegundoPuntaje,
        maplist(calcular_porcentaje(SumaTotal), PuntajesOrdenadosDesc, PuntajesPorcentaje),
        mostrar_resultado(MejorPuntaje, SegundoPuntaje, PuntajesPorcentaje, MejorEnfermedad)
    ;   writeln('No se encontraron síntomas coincidentes. No se puede determinar un diagnóstico.')
    ).

% Calcular porcentaje de cada enfermedad
calcular_porcentaje(SumaTotal, Puntaje-Enfermedad, Porcentaje-Enfermedad) :-
    Porcentaje is (Puntaje / SumaTotal) * 100.

% Mostrar el diagnóstico final
mostrar_resultado(MejorPuntaje, SegundoPuntaje, PuntajesPorcentaje, MejorEnfermedad) :-
    Diferencia is MejorPuntaje - SegundoPuntaje,
    (   
        % Si la diferencia entre el primer y segundo puntaje es significativa
        Diferencia > 15 -> 
        format('Diagnóstico probable: ~w con alta certeza (~2f%).~n', [MejorEnfermedad, (MejorPuntaje / (MejorPuntaje + SegundoPuntaje)) * 100])
    ;
        % Caso contrario, mostrar todas las probabilidades
        writeln('Diagnóstico poco concluyente. Probabilidades:'),
        mostrar_probabilidades(PuntajesPorcentaje)
    ).

% Mostrar cada enfermedad con su probabilidad
mostrar_probabilidades([]).
mostrar_probabilidades([Porcentaje-Enfermedad | Resto]) :-
    format('~w: ~2f%~n', [Enfermedad, Porcentaje]),
    mostrar_probabilidades(Resto).

% Pregunta por cada síntoma y lo almacena si se responde "s"
preguntar_sintoma(Sintoma) :-
    format('¿Tiene ~w? (s/n): ', [Sintoma]),
    read(Respuesta),
    (   Respuesta == s -> assert(tiene_sintoma(Sintoma)) ; true).

% Lista de todos los síntomas a preguntar
preguntar_sintomas :-
    ListaSintomas = [
        dolor_de_cabeza, fatiga, mialgias, dolor_abdominal, fiebre,
        perdida_de_apetito, dolor_de_garganta, dificultad_de_respirar,
        perdida_olfato_y_gusto, tos_seca, erupcion_cutanea, confusion,
        dolor_articular, diarrea, nauseas_y_vomitos, hemorragias,
        tos_productiva, sudoracion, palidez, ictericia, anemia, convulsiones,
        insuficiencia_renal, sepse, fiebre_prolongada, neumonia, insuficiencia_respiratoria,
        escalofrios, irritabilidad, cianosis, dolor_retrococular, shock,
        hemorragia_interna, cefalea_intensa, sindrome_de_choque, delirio,
        perforacion_intestinal, meningitis, congestion_nasal, insuficiencia_cardiaca
    ],
    maplist(preguntar_sintoma, ListaSintomas).

% Predicado principal para iniciar el diagnóstico
iniciar_diagnostico :-
    writeln('Sistema de diagnóstico de enfermedades. Por favor, responda con "s" o "n".'),
    retractall(tiene_sintoma(_)), % Limpia síntomas previos
    preguntar_sintomas,
    mejor_diagnostico.
