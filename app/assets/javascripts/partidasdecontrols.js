
    $(document).ready(function(){
        $("#partidasdecontrol_sectore_id").change(function(event){
            var id = $("#partidasdecontrol_sectore_id").find(':selected').val();
            $("#partidasdecontrol_subsectore_id").load('/partidasdecontrols/mostrar/'+id);
        });
    });

    $(document).ready(function(){
        $("#partidasdecontrol_fase_id").change(function(event){
            var id = $("#partidasdecontrol_fase_id").find(':selected').val();
            $("#partidasdecontrol_subfase_id").load('/partidasdecontrols/valuesubfase/'+id);
        });
    });   
    

    /* parte de obras grupos de trabajo partidasdecontrol */
    $(document).ready(function(){
        $("#parteobra_subsectore_id").change(function(event){
            var id = $("#parteobra_subsectore_id").find(':selected').val();
            $("#parteobra_materiales_attributes_0_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_1_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_2_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_3_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_4_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_5_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_6_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_7_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_8_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_9_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_10_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_11_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_12_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_13_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_14_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_15_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_16_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_17_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_18_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_19_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_20_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_0_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_1_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_2_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_3_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_4_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_5_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_6_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_7_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_8_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_9_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_10_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_11_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_12_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_13_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_14_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_15_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_16_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_17_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_18_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_19_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_20_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
        });
    });

    $(document).ready(function(){
        $("#valesdeconsumo_tipo_vale").change(function(event){
            var id = $("#valesdeconsumo_tipo_vale").find(':selected').val();
            $("#valesdeconsumo_tipo_material").load('/parteobras/values_tipodevale/'+id);
        });
    });

    /*  Parte Diario de obra Seccion Registros */
    $(document).ready(function(){ 
        $('#partediariodepersonal_trabajadores_attributes_0_normal, #partediariodepersonal_trabajadores_attributes_0_normal_60, #partediariodepersonal_trabajadores_attributes_0_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_0_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_0_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_0_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_0_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_1_normal, #partediariodepersonal_trabajadores_attributes_1_normal_60, #partediariodepersonal_trabajadores_attributes_1_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_1_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_1_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_1_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_1_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_2_normal, #partediariodepersonal_trabajadores_attributes_2_normal_60, #partediariodepersonal_trabajadores_attributes_2_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_2_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_2_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_2_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_2_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_3_normal, #partediariodepersonal_trabajadores_attributes_3_normal_60, #partediariodepersonal_trabajadores_attributes_3_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_3_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_3_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_3_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_3_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_4_normal, #partediariodepersonal_trabajadores_attributes_4_normal_60, #partediariodepersonal_trabajadores_attributes_4_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_4_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_4_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_4_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_4_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_5_normal, #partediariodepersonal_trabajadores_attributes_5_normal_60, #partediariodepersonal_trabajadores_attributes_5_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_5_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_5_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_5_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_5_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_6_normal, #partediariodepersonal_trabajadores_attributes_6_normal_60, #partediariodepersonal_trabajadores_attributes_6_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_6_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_6_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_6_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_6_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_7_normal, #partediariodepersonal_trabajadores_attributes_7_normal_60, #partediariodepersonal_trabajadores_attributes_7_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_7_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_7_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_7_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_7_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_8_normal, #partediariodepersonal_trabajadores_attributes_8_normal_60, #partediariodepersonal_trabajadores_attributes_8_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_8_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_8_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_8_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_8_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_9_normal, #partediariodepersonal_trabajadores_attributes_9_normal_60, #partediariodepersonal_trabajadores_attributes_9_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_9_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_9_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_9_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_9_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_10_normal, #partediariodepersonal_trabajadores_attributes_10_normal_60, #partediariodepersonal_trabajadores_attributes_10_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_10_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_10_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_10_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_10_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_11_normal, #partediariodepersonal_trabajadores_attributes_11_normal_60, #partediariodepersonal_trabajadores_attributes_11_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_11_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_11_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_11_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_11_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_12_normal, #partediariodepersonal_trabajadores_attributes_12_normal_60, #partediariodepersonal_trabajadores_attributes_12_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_12_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_12_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_12_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_12_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_13_normal, #partediariodepersonal_trabajadores_attributes_13_normal_60, #partediariodepersonal_trabajadores_attributes_13_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_13_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_13_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_13_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_13_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_14_normal, #partediariodepersonal_trabajadores_attributes_14_normal_60, #partediariodepersonal_trabajadores_attributes_14_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_14_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_14_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_14_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_14_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_15_normal, #partediariodepersonal_trabajadores_attributes_15_normal_60, #partediariodepersonal_trabajadores_attributes_15_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_15_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_15_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_15_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_15_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_16_normal, #partediariodepersonal_trabajadores_attributes_16_normal_60, #partediariodepersonal_trabajadores_attributes_16_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_16_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_16_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_16_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_16_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_17_normal, #partediariodepersonal_trabajadores_attributes_17_normal_60, #partediariodepersonal_trabajadores_attributes_17_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_17_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_17_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_17_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_17_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_18_normal, #partediariodepersonal_trabajadores_attributes_18_normal_60, #partediariodepersonal_trabajadores_attributes_18_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_18_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_18_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_18_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_18_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_19_normal, #partediariodepersonal_trabajadores_attributes_19_normal_60, #partediariodepersonal_trabajadores_attributes_19_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_19_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_19_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_19_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_19_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_20_normal, #partediariodepersonal_trabajadores_attributes_20_normal_60, #partediariodepersonal_trabajadores_attributes_20_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_20_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_20_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_20_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_20_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_21_normal, #partediariodepersonal_trabajadores_attributes_21_normal_60, #partediariodepersonal_trabajadores_attributes_21_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_21_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_21_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_21_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_21_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_22_normal, #partediariodepersonal_trabajadores_attributes_22_normal_60, #partediariodepersonal_trabajadores_attributes_22_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_22_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_22_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_22_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_22_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_23_normal, #partediariodepersonal_trabajadores_attributes_23_normal_60, #partediariodepersonal_trabajadores_attributes_23_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_23_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_23_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_23_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_23_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_24_normal, #partediariodepersonal_trabajadores_attributes_24_normal_60, #partediariodepersonal_trabajadores_attributes_24_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_24_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_24_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_24_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_24_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_25_normal, #partediariodepersonal_trabajadores_attributes_25_normal_60, #partediariodepersonal_trabajadores_attributes_25_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_25_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_25_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_25_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_25_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_26_normal, #partediariodepersonal_trabajadores_attributes_26_normal_60, #partediariodepersonal_trabajadores_attributes_26_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_26_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_26_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_26_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_26_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_27_normal, #partediariodepersonal_trabajadores_attributes_27_normal_60, #partediariodepersonal_trabajadores_attributes_27_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_27_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_27_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_27_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_27_total_horas').val(val);
        });
        $('#partediariodepersonal_trabajadores_attributes_28_normal, #partediariodepersonal_trabajadores_attributes_28_normal_60, #partediariodepersonal_trabajadores_attributes_28_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_28_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_28_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_28_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_28_total_horas').val(val);
        });

        $('#partediariodepersonal_trabajadores_attributes_29_normal, #partediariodepersonal_trabajadores_attributes_29_normal_60, #partediariodepersonal_trabajadores_attributes_29_normal_100').change(function(event){             
            var1 = parseFloat($('#partediariodepersonal_trabajadores_attributes_29_normal').val());
            var2 = parseFloat($('#partediariodepersonal_trabajadores_attributes_29_normal_60').val());
            var3 = parseFloat($('#partediariodepersonal_trabajadores_attributes_29_normal_100').val());
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if (isNaN(var3)) {
                var3 = 0;
            }
            val = var1 + var2 + var3 ;
            val = val.toFixed(2)
            $('#partediariodepersonal_trabajadores_attributes_29_total_horas').val(val);
        });
    });
    /*  End Parte Diario de obra Seccion Registros */

    

    $(document).ready(function(){ 
        $("#parteobra_partidas_attributes_0_lista_id").change(function(event){ 
            var id = $("#parteobra_partidas_attributes_0_lista_id").find(':selected').val(); 
            $("#parteobra_partidas_attributes_0_unidade_id").load('/parteobras/values_partidaunidad/'+id); 
        }); 
    });
    $(document).ready(function(){ $("#parteobra_partidas_attributes_1_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_1_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_1_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });
    $(document).ready(function(){ $("#parteobra_partidas_attributes_2_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_2_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_2_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });
    $(document).ready(function(){ $("#parteobra_partidas_attributes_3_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_3_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_3_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });
    $(document).ready(function(){ $("#parteobra_partidas_attributes_4_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_4_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_4_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });
    $(document).ready(function(){ $("#parteobra_partidas_attributes_5_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_5_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_5_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });
    $(document).ready(function(){ $("#parteobra_partidas_attributes_6_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_6_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_6_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });
    $(document).ready(function(){ $("#parteobra_partidas_attributes_7_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_7_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_7_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });
    $(document).ready(function(){ $("#parteobra_partidas_attributes_8_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_8_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_8_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });
    $(document).ready(function(){ $("#parteobra_partidas_attributes_9_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_9_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_9_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });
    $(document).ready(function(){ $("#parteobra_partidas_attributes_10_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_10_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_10_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });
    $(document).ready(function(){ $("#parteobra_partidas_attributes_11_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_11_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_11_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });    
    $(document).ready(function(){ $("#parteobra_partidas_attributes_12_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_12_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_12_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });    
    $(document).ready(function(){ $("#parteobra_partidas_attributes_13_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_13_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_13_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });    
    $(document).ready(function(){ $("#parteobra_partidas_attributes_14_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_14_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_14_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });    
    $(document).ready(function(){ $("#parteobra_partidas_attributes_15_lista_id").change(function(event){ var id = $("#parteobra_partidas_attributes_15_lista_id").find(':selected').val(); $("#parteobra_partidas_attributes_15_unidade_id").load('/parteobras/values_partidaunidad/'+id); }); });      


    /*  parte de equipos */
    $(document).ready(function(){
        $("#partedeequipo_subcontratodeequipo_id").change(function(event){
            var id = $("#partedeequipo_subcontratodeequipo_id").find(':selected').val();
            $("#partedeequipo_equiposdesubcontrato_id").load('/partedeequipos/values_equiposdesubcontrato/'+id);
        });
    });
    /*  End parte de equipos */

    /* partedeequipos unidades automaticas al seleccionar equipo */
        $(document).ready(function(){
        $("#partedeequipo_equiposdesubcontrato_id").change(function(event){
            var id = $("#partedeequipo_equiposdesubcontrato_id").find(':selected').val();
            $("#partedeequipo_equiposregistrados_attributes_0_unidade_id").load('/partedeequipos/values_unidades/'+id);
            $("#partedeequipo_equiposregistrados_attributes_1_unidade_id").load('/partedeequipos/values_unidades/'+id);
            $("#partedeequipo_equiposregistrados_attributes_2_unidade_id").load('/partedeequipos/values_unidades/'+id);
            $("#partedeequipo_equiposregistrados_attributes_3_unidade_id").load('/partedeequipos/values_unidades/'+id);
            $("#partedeequipo_equiposregistrados_attributes_4_unidade_id").load('/partedeequipos/values_unidades/'+id);
            $("#partedeequipo_equiposregistrados_attributes_5_unidade_id").load('/partedeequipos/values_unidades/'+id);
            $("#partedeequipo_equiposregistrados_attributes_6_unidade_id").load('/partedeequipos/values_unidades/'+id);
            $("#partedeequipo_equiposregistrados_attributes_7_unidade_id").load('/partedeequipos/values_unidades/'+id);
            $("#partedeequipo_equiposregistrados_attributes_8_unidade_id").load('/partedeequipos/values_unidades/'+id);
            $("#partedeequipo_equiposregistrados_attributes_9_unidade_id").load('/partedeequipos/values_unidades/'+id);
            $("#partedeequipo_equiposregistrados_attributes_10_unidade_id").load('/partedeequipos/values_unidades/'+id);            
        });
    });        
    /* final */



    /* Subcontrato de Equipos suma de parciales */   
    /* ==========================================*/ 
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_0_cantidad, #subcontrato_insumos_attributes_0_pu_sin_igv').change(function(event){
            var1 = parseFloat($('#subcontrato_insumos_attributes_0_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_0_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_0_parcial').val(val);            
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_1_cantidad, #subcontrato_insumos_attributes_1_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_1_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_1_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_1_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_2_cantidad, #subcontrato_insumos_attributes_2_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_2_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_2_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_2_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_3_cantidad, #subcontrato_insumos_attributes_3_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_3_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_3_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_3_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_4_cantidad, #subcontrato_insumos_attributes_4_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_4_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_4_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_4_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_5_cantidad, #subcontrato_insumos_attributes_5_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_5_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_5_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_5_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_6_cantidad, #subcontrato_insumos_attributes_6_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_6_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_6_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_6_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_7_cantidad, #subcontrato_insumos_attributes_7_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_7_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_7_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_7_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_8_cantidad, #subcontrato_insumos_attributes_8_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_8_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_8_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_8_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_9_cantidad, #subcontrato_insumos_attributes_9_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_9_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_9_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_9_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_10_cantidad, #subcontrato_insumos_attributes_10_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_10_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_10_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_10_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_11_cantidad, #subcontrato_insumos_attributes_11_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_11_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_11_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_11_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_12_cantidad, #subcontrato_insumos_attributes_12_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_12_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_12_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_12_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_13_cantidad, #subcontrato_insumos_attributes_13_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_13_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_13_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_13_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_14_cantidad, #subcontrato_insumos_attributes_14_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_14_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_14_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_14_parcial').val(val);
        });
    });
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_15_cantidad, #subcontrato_insumos_attributes_15_pu_sin_igv').change(function(event){             
            var1 = parseFloat($('#subcontrato_insumos_attributes_15_cantidad').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_15_pu_sin_igv').val());            
            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }
            val = var1 * var2;
            val = val.toFixed(2)
            $('#subcontrato_insumos_attributes_15_parcial').val(val);
        });
    });


    /* subcontratos  suma de monto contratado */
    /* ================================================== */
    $(document).ready(function(){ 
        $('#subcontrato_insumos_attributes_0_pu_sin_igv, #subcontrato_insumos_attributes_1_pu_sin_igv, #subcontrato_insumos_attributes_2_pu_sin_igv, #subcontrato_insumos_attributes_3_pu_sin_igv, #subcontrato_insumos_attributes_4_pu_sin_igv, #subcontrato_insumos_attributes_5_pu_sin_igv, #subcontrato_insumos_attributes_6_pu_sin_igv, #subcontrato_insumos_attributes_7_pu_sin_igv, #subcontrato_insumos_attributes_8_pu_sin_igv, #subcontrato_insumos_attributes_9_pu_sin_igv, #subcontrato_insumos_attributes_10_pu_sin_igv, #subcontrato_insumos_attributes_11_pu_sin_igv, #subcontrato_insumos_attributes_12_pu_sin_igv, #subcontrato_insumos_attributes_13_pu_sin_igv, #subcontrato_insumos_attributes_14_pu_sin_igv, #subcontrato_insumos_attributes_15_pu_sin_igv, #subcontrato_insumos_attributes_16_pu_sin_igv').change(function(event){
            var1 = parseFloat($('#subcontrato_insumos_attributes_0_parcial').val());
            var2 = parseFloat($('#subcontrato_insumos_attributes_1_parcial').val());
            var3 = parseFloat($('#subcontrato_insumos_attributes_2_parcial').val());                      
            var4 = parseFloat($('#subcontrato_insumos_attributes_3_parcial').val());                      
            var5 = parseFloat($('#subcontrato_insumos_attributes_4_parcial').val());     
            var6 = parseFloat($('#subcontrato_insumos_attributes_5_parcial').val());                      
            var7 = parseFloat($('#subcontrato_insumos_attributes_6_parcial').val());                      
            var8 = parseFloat($('#subcontrato_insumos_attributes_7_parcial').val());                      
            var9 = parseFloat($('#subcontrato_insumos_attributes_8_parcial').val());                      
            var10 = parseFloat($('#subcontrato_insumos_attributes_9_parcial').val());                      
            var11 = parseFloat($('#subcontrato_insumos_attributes_10_parcial').val());                      
            var12 = parseFloat($('#subcontrato_insumos_attributes_11_parcial').val());                      
            var13 = parseFloat($('#subcontrato_insumos_attributes_12_parcial').val());                      
            var14 = parseFloat($('#subcontrato_insumos_attributes_13_parcial').val());                      
            var15 = parseFloat($('#subcontrato_insumos_attributes_14_parcial').val());                      
            var16 = parseFloat($('#subcontrato_insumos_attributes_15_parcial').val());                      

            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if(isNaN(var3)){
                var3 = 0;
            }if(isNaN(var4)){
                var4 = 0;
            }if(isNaN(var5)){
                var5 = 0;
            }if(isNaN(var6)){
                var6 = 0;
            }if(isNaN(var7)){
                var7 = 0;
            }if(isNaN(var8)){
                var8 = 0;
            }if(isNaN(var9)){
                var9 = 0;
            }if(isNaN(var10)){
                var10 = 0;
            }if(isNaN(var11)){
                var11 = 0;
            }if(isNaN(var12)){
                var12 = 0;
            }if(isNaN(var13)){
                var13 = 0;
            }if(isNaN(var14)){
                var14 = 0;
            }if(isNaN(var15)){
                var15 = 0;
            }if(isNaN(var16)){
                var16 = 0;
            }
            val = var1 + var2 + var3 + var4 +var5 + var6 + var7 + var8 + var9 + var10 + var11 + var12 + var13 + var14 + var15 + var16;
            val = val.toFixed(2);
            $('#subcontrato_monto_contratado').val(val);
        });
    });
  
/* valorizaciones Subcontratistas */    
/* #####################################################################################################################*/
$(document).ready(function(){ 
    $('#actual_amortizacion_porcentaje').change(function(event){
        var1 = parseFloat($('#actual_amortizacion_porcentaje').val());
        var2 = parseFloat($('#actual_valorizacion_actual').val());            
        if (isNaN(var1)) {
            var1 = 0;    
        }if(isNaN(var2)){
            var2 = 0;
        }
        var3 = (var1/100)*var2 
        val =  var3     
        val = val.toFixed(2)
        $('#actual_amortizacion_numero').val(val);
    });
});

$(document).ready(function(){ 
    $('#actual_amortizacion_numero').change(function(event){
        var1 = parseFloat($('#actual_amortizacion_numero').val());
        var2 = parseFloat($('#actual_valorizacion_actual').val());            
        if (isNaN(var1)) {
            var1 = 0;    
        }if(isNaN(var2)){
            var2 = 0;
        }         
        val =  (var1/var2)*100
        
        val = val.toFixed(2)
        $('#actual_amortizacion_porcentaje').val(val);
    });
});

/* valorizaciones maquinarias */    
/* #####################################################################################################################*/
$(document).ready(function(){ 
    $('#f_amortizacion_inicial_porcentaje').change(function(event){
        var1 = parseFloat($('#f_amortizacion_inicial_porcentaje').val());
        var2 = parseFloat($('#actual_valorizacion_actual').val());            
        if (isNaN(var1)) {
            var1 = 0;    
        }if(isNaN(var2)){
            var2 = 0;
        }
        var3 = (var1/100)*var2 
        val =  var3     
        val = val.toFixed(2)
        $('#f_amortizacion_inicial_cantidad').val(val);
    });
});

$(document).ready(function(){ 
    $('#f_amortizacion_inicial_cantidad').change(function(event){
        var1 = parseFloat($('#f_amortizacion_inicial_cantidad').val());
        var2 = parseFloat($('#actual_valorizacion_actual').val());            
        if (isNaN(var1)) {
            var1 = 0;    
        }if(isNaN(var2)){
            var2 = 0;
        }         
        val =  (var1/var2)*100
        
        val = val.toFixed(2)
        $('#f_amortizacion_inicial_porcentaje').val(val);
    });
});


/*  parte de equipos inicio fin  */
$(document).ready(function(){ 
    $('#partedeequipo_inicio, #partedeequipo_fin, #partedeequipo_diferencia').change(function(event){
        var1 = parseFloat($('#partedeequipo_inicio').val());
        var2 = parseFloat($('#partedeequipo_fin').val());            
        if (isNaN(var1)) {
            var1 = 0;    
        }if(isNaN(var2)){
            var2 = 0;
        }         
        val =  (var2 - var1)
        
        val = val.toFixed(2)
        $('#partedeequipo_diferencia').val(val);
    });   
});

/*  parte diario de personal grupos de trabajo  */
$(document).ready(function(){
        $("#partediariodepersonal_gruposdetrabajo_id").change(function(event){
            var id = $("#partediariodepersonal_gruposdetrabajo_id").find(':selected').val();
            $("#partediariodepersonal_trabajadores_attributes_0_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_1_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_2_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_3_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_4_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_5_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_6_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_1_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_2_partidasdecontrol_id").load('/ppartediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_7_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_8_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_9_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_10_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_11_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_12_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_13_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_14_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_15_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_16_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_17_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_18_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_19_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_20_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_21_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_22_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_23_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_24_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_25_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_26_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_27_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_28_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_29_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);
            $("#partediariodepersonal_trabajadores_attributes_30_partidasdecontrol_id").load('/partediariodepersonals/values_partidasdecontrol/'+id);

        });
    });



/*  Primero  */
$(document).ready(function(){
        $("#combo1").change(function(event){
            var id = $("#combo1").find(':selected').val();
            $("#combo2").load('/reportedeequipos/values_combo2/'+id);
        });
    });





/*  parte de obra grupos de trabajo  */
$(document).ready(function(){
        $("#parteobra_gruposdetrabajo_id").change(function(event){
            var id = $("#parteobra_gruposdetrabajo_id").find(':selected').val();            
            $("#parteobra_equipos_attributes_0_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_1_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_2_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_3_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_4_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_5_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_6_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_1_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_2_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_7_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_8_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_9_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_10_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_11_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_12_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_13_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_14_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_15_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_16_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_17_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_18_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_19_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_equipos_attributes_20_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);

            $("#parteobra_materiales_attributes_0_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_1_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_2_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_3_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_4_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_5_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_6_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_1_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_2_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_7_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_8_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_9_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_10_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_11_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_12_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_13_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_14_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_15_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_16_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_17_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_18_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_19_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
            $("#parteobra_materiales_attributes_20_partidasdecontrol_id").load('/parteobras/values_partidasdecontrol/'+id);
        });
    });





/* partedeequipos  suma de HorasEfectivas */
    /* ================================================== */
    $(document).ready(function(){ 
        $('#partedeequipo_equiposregistrados_attributes_0_cantidad, #partedeequipo_equiposregistrados_attributes_1_cantidad, #partedeequipo_equiposregistrados_attributes_2_cantidad, #partedeequipo_equiposregistrados_attributes_3_cantidad, #partedeequipo_equiposregistrados_attributes_4_cantidad, #partedeequipo_equiposregistrados_attributes_5_cantidad, #partedeequipo_equiposregistrados_attributes_6_cantidad, #partedeequipo_equiposregistrados_attributes_7_cantidad, #partedeequipo_equiposregistrados_attributes_8_cantidad, #partedeequipo_equiposregistrados_attributes_9_cantidad, #partedeequipo_equiposregistrados_attributes_10_cantidad').change(function(event){
            var1 = parseFloat($('#partedeequipo_equiposregistrados_attributes_0_cantidad').val());
            var2 = parseFloat($('#partedeequipo_equiposregistrados_attributes_1_cantidad').val());
            var3 = parseFloat($('#partedeequipo_equiposregistrados_attributes_2_cantidad').val());                      
            var4 = parseFloat($('#partedeequipo_equiposregistrados_attributes_3_cantidad').val());                      
            var5 = parseFloat($('#partedeequipo_equiposregistrados_attributes_4_cantidad').val());     
            var6 = parseFloat($('#partedeequipo_equiposregistrados_attributes_5_cantidad').val());                      
            var7 = parseFloat($('#partedeequipo_equiposregistrados_attributes_6_cantidad').val());                      
            var8 = parseFloat($('#partedeequipo_equiposregistrados_attributes_7_cantidad').val());                      
            var9 = parseFloat($('#partedeequipo_equiposregistrados_attributes_8_cantidad').val());                      
            var10 = parseFloat($('#partedeequipo_equiposregistrados_attributes_9_cantidad').val());                      
            var11 = parseFloat($('#partedeequipo_equiposregistrados_attributes_10_cantidad').val());

            if (isNaN(var1)) {
                var1 = 0;    
            }if(isNaN(var2)){
                var2 = 0;
            }if(isNaN(var3)){
                var3 = 0;
            }if(isNaN(var4)){
                var4 = 0;
            }if(isNaN(var5)){
                var5 = 0;
            }if(isNaN(var6)){
                var6 = 0;
            }if(isNaN(var7)){
                var7 = 0;
            }if(isNaN(var8)){
                var8 = 0;
            }if(isNaN(var9)){
                var9 = 0;
            }if(isNaN(var10)){
                var10 = 0;
            }if(isNaN(var11)){
                var11 = 0;
            }
            
            val = var1 + var2 + var3 + var4 +var5 + var6 + var7 + var8 + var9 + var10 + var11;
            val = val.toFixed(2);
            $('#partedeequipo_total_horas_efectivas').val(val);
        });
    });



/*  Buscador de Parteobra  */
$(document).ready(function(){
    $("#parteobra_campo").change(function(event){
        var id = $("#parteobra_campo").find(':selected').val();
        $("#parteobra_opcion").load('/parteobras/values_opcion/'+id);        
    });
});
/*  Buscador de Partedepersonals  */
$(document).ready(function(){
    $("#partediariodepersonal_campo").change(function(event){
        var id = $("#partediariodepersonal_campo").find(':selected').val();
        $("#partediariodepersonal_opcion").load('/partediariodepersonals/values_opcion/'+id);        
    });
});
/*  Buscador de Partedeequipo  */
$(document).ready(function(){
    $("#partedeequipo_campo").change(function(event){
        var id = $("#partedeequipo_campo").find(':selected').val();
        $("#partedeequipo_opcion").load('/partedeequipos/values_opcion/'+id);        
    });
});