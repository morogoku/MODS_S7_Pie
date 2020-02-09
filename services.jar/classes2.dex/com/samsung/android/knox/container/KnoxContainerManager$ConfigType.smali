.class public final enum Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;
.super Ljava/lang/Enum;
.source "KnoxContainerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/container/KnoxContainerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum BBC:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum LAUNCHER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

.field public static final enum SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;


# instance fields
.field private final mTypeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    const-string v1, "LIGHTWEIGHT"

    const-string v2, "lightweight"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    new-instance v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    const-string v1, "KIOSK"

    const-string v2, "kiosk"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    new-instance v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    const-string v1, "LAUNCHER"

    const-string v2, "launcher"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    new-instance v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    const-string v1, "BBC"

    const-string v2, "bbc"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    new-instance v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    const-string v1, "SECUREFOLDER"

    const-string/jumbo v2, "securefolder"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    sget-object v1, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->SECUREFOLDER:Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->$VALUES:[Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->mTypeString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->$VALUES:[Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    return-object v0
.end method


# virtual methods
.method public getType(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;
    .registers 7

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->values()[Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->mTypeString:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/container/KnoxContainerManager$ConfigType;->mTypeString:Ljava/lang/String;

    return-object v0
.end method
