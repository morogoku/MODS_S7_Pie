.class public final enum Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;
.super Ljava/lang/Enum;
.source "ViewAnimationState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

.field public static final enum DISMISS_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

.field public static final enum IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

.field public static final enum SHOW_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    const-string v1, "SHOW_ANIMATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    const-string v1, "DISMISS_ANIMATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->SHOW_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->DISMISS_ANIMATE:Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->$VALUES:[Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;
    .registers 2

    const-class v0, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;
    .registers 1

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->$VALUES:[Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    invoke-virtual {v0}, [Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/globalactionsdlx/presentation/view/ViewAnimationState;

    return-object v0
.end method
