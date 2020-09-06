.class public final enum Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;
.super Ljava/lang/Enum;
.source "ActionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToggleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

.field public static final enum off:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

.field public static final enum on:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    const-string/jumbo v1, "on"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;->on:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    new-instance v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    const-string/jumbo v1, "off"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;->on:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;->$VALUES:[Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;
    .registers 2

    const-class v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;
    .registers 1

    sget-object v0, Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;->$VALUES:[Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    invoke-virtual {v0}, [Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/globalactionsdlx/presentation/viewmodel/ActionViewModel$ToggleState;

    return-object v0
.end method
