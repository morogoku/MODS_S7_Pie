.class public interface abstract Lcom/samsung/android/globalactionsdlx/presentation/features/FeatureFactory;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# virtual methods
.method public abstract createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionInteractionStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createActionsCreationStrategies(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/strategies/ActionsCreationStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/strategies/DefaultActionsCreationStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createDisposingStrategies(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/strategies/DisposingStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createInitializationStrategies(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/strategies/InitializationStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createOnKeyListenerStrategy(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/strategies/OnKeyListenerStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createSecureConfirmStrategy(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/strategies/SecureConfirmStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createSoftwareUpdateStrategy(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/strategies/SoftwareUpdateStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createWindowDecorationStrategies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/strategies/WindowDecorationStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createWindowManagerFunctionStrategy(Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactionsdlx/presentation/SecGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactionsdlx/presentation/strategies/WindowManagerFunctionStrategy;",
            ">;"
        }
    .end annotation
.end method
