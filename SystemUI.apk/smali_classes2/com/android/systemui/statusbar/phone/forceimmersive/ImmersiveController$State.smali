.class final enum Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;
.super Ljava/lang/Enum;
.source "ImmersiveController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

.field public static final enum FORCE_IMMERSIVE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

.field public static final enum GONE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

.field public static final enum HIDDEN:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

.field public static final enum IMMERSIVE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

.field public static final enum INIT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

.field public static final enum TRANSIENT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

.field public static final enum VISIBLE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->INIT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    const-string v1, "VISIBLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->VISIBLE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    const-string v1, "GONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->GONE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    const-string v1, "IMMERSIVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->IMMERSIVE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    const-string v1, "FORCE_IMMERSIVE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->FORCE_IMMERSIVE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    const-string v1, "TRANSIENT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->TRANSIENT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    new-instance v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    const-string v1, "HIDDEN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->HIDDEN:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->INIT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->VISIBLE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->GONE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->IMMERSIVE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->FORCE_IMMERSIVE:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->TRANSIENT:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->HIDDEN:Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->$VALUES:[Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->$VALUES:[Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/forceimmersive/ImmersiveController$State;

    return-object v0
.end method
