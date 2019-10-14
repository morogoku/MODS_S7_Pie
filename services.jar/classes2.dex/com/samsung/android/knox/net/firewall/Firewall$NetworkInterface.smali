.class public final enum Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;
.super Ljava/lang/Enum;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

.field public static final enum ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

.field public static final enum MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

.field public static final enum WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const-string v1, "ALL_NETWORKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const-string v1, "WIFI_DATA_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const-string v1, "MOBILE_DATA_ONLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    return-object v0
.end method
