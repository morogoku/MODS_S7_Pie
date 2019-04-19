.class public final synthetic Lcom/android/server/am/-$$Lambda$DividerCloseNotificationController$hgfUQRGL9sM-pAWrf8AenGxQ6NE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/am/DividerCloseNotificationController$DividerCloseEventConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$DividerCloseNotificationController$hgfUQRGL9sM-pAWrf8AenGxQ6NE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$DividerCloseNotificationController$hgfUQRGL9sM-pAWrf8AenGxQ6NE;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$DividerCloseNotificationController$hgfUQRGL9sM-pAWrf8AenGxQ6NE;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$DividerCloseNotificationController$hgfUQRGL9sM-pAWrf8AenGxQ6NE;->INSTANCE:Lcom/android/server/am/-$$Lambda$DividerCloseNotificationController$hgfUQRGL9sM-pAWrf8AenGxQ6NE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;Landroid/os/Message;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/am/DividerCloseNotificationController;->lambda$new$0(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;Landroid/os/Message;)V

    return-void
.end method
