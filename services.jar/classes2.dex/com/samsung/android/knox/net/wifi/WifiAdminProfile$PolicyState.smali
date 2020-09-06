.class public final enum Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
.super Ljava/lang/Enum;
.source "WifiAdminProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PolicyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

.field public static final enum DEFAULT:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

.field public static final enum FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

.field public static final enum TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    const-string v1, "FALSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    new-instance v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    const-string v1, "TRUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    new-instance v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    const-string v1, "DEFAULT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->DEFAULT:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->DEFAULT:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->$VALUES:[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

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

.method public static valueOf(I)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
    .registers 2

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_b

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object v0

    :cond_b
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_16

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object v0

    :cond_16
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->DEFAULT:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object v0
.end method

.method public static valueOf(Z)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
    .registers 2

    const/4 v0, 0x1

    if-ne v0, p0, :cond_6

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object v0

    :cond_6
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->FALSE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->$VALUES:[Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    return-object v0
.end method


# virtual methods
.method public valueOf()Z
    .registers 2

    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;->TRUE:Lcom/samsung/android/knox/net/wifi/WifiAdminProfile$PolicyState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
