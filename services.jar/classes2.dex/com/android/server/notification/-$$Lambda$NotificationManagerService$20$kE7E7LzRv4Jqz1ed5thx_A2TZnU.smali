.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$20$kE7E7LzRv4Jqz1ed5thx_A2TZnU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$20$kE7E7LzRv4Jqz1ed5thx_A2TZnU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$20$kE7E7LzRv4Jqz1ed5thx_A2TZnU;

    invoke-direct {v0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$20$kE7E7LzRv4Jqz1ed5thx_A2TZnU;-><init>()V

    sput-object v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$20$kE7E7LzRv4Jqz1ed5thx_A2TZnU;->INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$20$kE7E7LzRv4Jqz1ed5thx_A2TZnU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .registers 2

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService$20;->lambda$run$0(I)Z

    move-result p1

    return p1
.end method
