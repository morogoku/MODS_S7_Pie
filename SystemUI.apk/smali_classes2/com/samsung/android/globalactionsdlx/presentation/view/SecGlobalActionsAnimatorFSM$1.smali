.class synthetic Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$1;
.super Ljava/lang/Object;
.source "SecGlobalActionsAnimatorFSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->values()[Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$1;->$SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State:[I

    :try_start_9
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$1;->$SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State:[I

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$1;->$SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State:[I

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$1;->$SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State:[I

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$1;->$SwitchMap$com$samsung$android$globalactions$presentation$view$SecGlobalActionsAnimatorFSM$State:[I

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->SAFE_MODE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {v1}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    return-void
.end method
