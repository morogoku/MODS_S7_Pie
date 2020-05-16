.class public final enum Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;
.super Ljava/lang/Enum;
.source "FirewallResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/FirewallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum IPV6_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

.field public static final enum UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "DATABASE_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "INVALID_PARAMETER_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "OPERATION_NOT_PERMITTED_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "NOT_AUTHORIZED_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "IPV6_NOT_SUPPORTED_ERROR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v1, "UNEXPECTED_ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    return-object v0
.end method
