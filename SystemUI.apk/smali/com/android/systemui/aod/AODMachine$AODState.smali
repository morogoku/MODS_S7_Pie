.class public final enum Lcom/android/systemui/aod/AODMachine$AODState;
.super Ljava/lang/Enum;
.source "AODMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/aod/AODMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AODState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/aod/AODMachine$AODState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/aod/AODMachine$AODState;

.field public static final enum DOZE:Lcom/android/systemui/aod/AODMachine$AODState;

.field public static final enum DOZE_AOD:Lcom/android/systemui/aod/AODMachine$AODState;

.field public static final enum DOZE_AOD_PAUSED:Lcom/android/systemui/aod/AODMachine$AODState;

.field public static final enum DOZE_MOD:Lcom/android/systemui/aod/AODMachine$AODState;

.field public static final enum DOZE_REQUEST_AOD:Lcom/android/systemui/aod/AODMachine$AODState;

.field public static final enum FINISH:Lcom/android/systemui/aod/AODMachine$AODState;

.field public static final enum INITIALIZED:Lcom/android/systemui/aod/AODMachine$AODState;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/aod/AODMachine$AODState;

.field public static final enum UNKNOWN:Lcom/android/systemui/aod/AODMachine$AODState;


# instance fields
.field state:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/systemui/aod/AODMachine$AODState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/aod/AODMachine$AODState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->UNKNOWN:Lcom/android/systemui/aod/AODMachine$AODState;

    new-instance v0, Lcom/android/systemui/aod/AODMachine$AODState;

    const-string v1, "UNINITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/aod/AODMachine$AODState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->UNINITIALIZED:Lcom/android/systemui/aod/AODMachine$AODState;

    new-instance v0, Lcom/android/systemui/aod/AODMachine$AODState;

    const-string v1, "INITIALIZED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/android/systemui/aod/AODMachine$AODState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->INITIALIZED:Lcom/android/systemui/aod/AODMachine$AODState;

    new-instance v0, Lcom/android/systemui/aod/AODMachine$AODState;

    const-string v1, "DOZE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/android/systemui/aod/AODMachine$AODState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE:Lcom/android/systemui/aod/AODMachine$AODState;

    new-instance v0, Lcom/android/systemui/aod/AODMachine$AODState;

    const-string v1, "DOZE_REQUEST_AOD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/android/systemui/aod/AODMachine$AODState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_REQUEST_AOD:Lcom/android/systemui/aod/AODMachine$AODState;

    new-instance v0, Lcom/android/systemui/aod/AODMachine$AODState;

    const-string v1, "DOZE_AOD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/android/systemui/aod/AODMachine$AODState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_AOD:Lcom/android/systemui/aod/AODMachine$AODState;

    new-instance v0, Lcom/android/systemui/aod/AODMachine$AODState;

    const-string v1, "DOZE_AOD_PAUSED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lcom/android/systemui/aod/AODMachine$AODState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_AOD_PAUSED:Lcom/android/systemui/aod/AODMachine$AODState;

    new-instance v0, Lcom/android/systemui/aod/AODMachine$AODState;

    const-string v1, "DOZE_MOD"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v8}, Lcom/android/systemui/aod/AODMachine$AODState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_MOD:Lcom/android/systemui/aod/AODMachine$AODState;

    new-instance v0, Lcom/android/systemui/aod/AODMachine$AODState;

    const-string v1, "FINISH"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v9}, Lcom/android/systemui/aod/AODMachine$AODState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->FINISH:Lcom/android/systemui/aod/AODMachine$AODState;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/systemui/aod/AODMachine$AODState;

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->UNKNOWN:Lcom/android/systemui/aod/AODMachine$AODState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->UNINITIALIZED:Lcom/android/systemui/aod/AODMachine$AODState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->INITIALIZED:Lcom/android/systemui/aod/AODMachine$AODState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE:Lcom/android/systemui/aod/AODMachine$AODState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_REQUEST_AOD:Lcom/android/systemui/aod/AODMachine$AODState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_AOD:Lcom/android/systemui/aod/AODMachine$AODState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_AOD_PAUSED:Lcom/android/systemui/aod/AODMachine$AODState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->DOZE_MOD:Lcom/android/systemui/aod/AODMachine$AODState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->FINISH:Lcom/android/systemui/aod/AODMachine$AODState;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->$VALUES:[Lcom/android/systemui/aod/AODMachine$AODState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/aod/AODMachine$AODState;->state:I

    return-void
.end method

.method public static get(I)Lcom/android/systemui/aod/AODMachine$AODState;
    .locals 5

    invoke-static {}, Lcom/android/systemui/aod/AODMachine$AODState;->values()[Lcom/android/systemui/aod/AODMachine$AODState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/systemui/aod/AODMachine$AODState;->state:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/aod/AODMachine$AODState;->UNKNOWN:Lcom/android/systemui/aod/AODMachine$AODState;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/aod/AODMachine$AODState;
    .locals 1

    const-class v0, Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/aod/AODMachine$AODState;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/aod/AODMachine$AODState;
    .locals 1

    sget-object v0, Lcom/android/systemui/aod/AODMachine$AODState;->$VALUES:[Lcom/android/systemui/aod/AODMachine$AODState;

    invoke-virtual {v0}, [Lcom/android/systemui/aod/AODMachine$AODState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/aod/AODMachine$AODState;

    return-object v0
.end method


# virtual methods
.method public canMOD()Z
    .locals 2

    sget-object v0, Lcom/android/systemui/aod/AODMachine$1;->$SwitchMap$com$android$systemui$aod$AODMachine$AODState:[I

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODMachine$AODState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public screenState()I
    .locals 2

    sget-object v0, Lcom/android/systemui/aod/AODMachine$1;->$SwitchMap$com$android$systemui$aod$AODMachine$AODState:[I

    invoke-virtual {p0}, Lcom/android/systemui/aod/AODMachine$AODState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
