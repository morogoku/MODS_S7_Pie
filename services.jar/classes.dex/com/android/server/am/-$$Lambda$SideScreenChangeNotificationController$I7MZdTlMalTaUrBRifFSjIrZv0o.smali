.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$I7MZdTlMalTaUrBRifFSjIrZv0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$I7MZdTlMalTaUrBRifFSjIrZv0o;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$I7MZdTlMalTaUrBRifFSjIrZv0o;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$I7MZdTlMalTaUrBRifFSjIrZv0o;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$I7MZdTlMalTaUrBRifFSjIrZv0o;->INSTANCE:Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$I7MZdTlMalTaUrBRifFSjIrZv0o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/am/SideScreenChangeNotificationController;->lambda$new$0(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V

    return-void
.end method
