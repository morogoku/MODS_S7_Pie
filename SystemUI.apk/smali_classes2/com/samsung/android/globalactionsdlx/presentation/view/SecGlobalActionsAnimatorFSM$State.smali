.class final enum Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;
.super Ljava/lang/Enum;
.source "SecGlobalActionsAnimatorFSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

.field public static final enum CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

.field public static final enum IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

.field public static final enum MAIN:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

.field public static final enum SAFE_MODE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    const-string v1, "MAIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    const-string v1, "CONFIRM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    const-string v1, "SAFE_MODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->SAFE_MODE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->MAIN:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->CONFIRM:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->SAFE_MODE:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->$VALUES:[Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;
    .registers 2

    const-class v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;
    .registers 1

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->$VALUES:[Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    invoke-virtual {v0}, [Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsAnimatorFSM$State;

    return-object v0
.end method
