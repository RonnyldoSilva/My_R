# All about random forest

Random forest and variable importance:
```r
# Modelo Preditivo
# Random Forest
rf_1 <- randomForest(FINAL_YIELD ~ .,
                   data = train %>% 
                   dplyr::select(predictive_features), 
                   importance = TRUE, #mtry = 15,
                   trControl = controle)
rf_1

# Realizando a previsão no conjunto de testes completo:
# Prevendo no conjunto de testes COMPLETO
rf_1_prediction <- predict(rf_1, newdata = as.data.frame(test %>% dplyr::select(predictive_features)))
test <- test %>% cbind(rf_1_prediction)

# Calcula das métricas avaliativas a partir da previsão
av_rf_1 <- metrics_ml("Res - RF Pred", test, 
                           "rf_1_prediction", "FINAL_YIELD")
av_rf_1

# Intervalo de confiança do modelo:
rf1_boot <- mae_boot_obj(test, "rf_1_prediction", "FINAL_YIELD")
rf_pred_ci = tidy(rf1_boot, 
               conf.level = .95,
               conf.method = "basic",
               conf.int = TRUE)
glimpse(rf_pred_ci) 
rf_pred_ci <- rf_pred_ci %>% mutate(modelo = "Resample RF-Pred")
rf_pred_ci

# Importância de features a partir da permutação de variáveis:
explainer_rf <- DALEX::explain(model = rf_1,
                             data = test %>%
                               select(predictive_features) %>%
                               select(-"FINAL_YIELD"),
                             y = test$FINAL_YIELD,
                             label = "Random Forest")
varimportance <- model_parts(explainer_rf, loss_function = loss_root_mean_square)
varimportance

plot(varimportance) + ggtitle("Importância da Variável - Permutação", "")
```
