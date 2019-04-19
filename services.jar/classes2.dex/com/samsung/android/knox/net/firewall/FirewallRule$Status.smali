.class public final enum Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;
.super Ljava/lang/Enum;
.source "FirewallRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/FirewallRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

.field public static final enum DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

.field public static final enum ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

.field public static final enum PENDING:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    const-string v1, "ENABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    const-string v1, "PENDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->PENDING:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->PENDING:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;
    .registers 2

    const-class v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    return-object v0
.end method
