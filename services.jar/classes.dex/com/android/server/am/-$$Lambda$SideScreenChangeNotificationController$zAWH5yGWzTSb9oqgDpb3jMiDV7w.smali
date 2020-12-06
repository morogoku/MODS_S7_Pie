.class public final synthetic Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$zAWH5yGWzTSb9oqgDpb3jMiDV7w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$zAWH5yGWzTSb9oqgDpb3jMiDV7w;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$zAWH5yGWzTSb9oqgDpb3jMiDV7w;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$zAWH5yGWzTSb9oqgDpb3jMiDV7w;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$zAWH5yGWzTSb9oqgDpb3jMiDV7w;->INSTANCE:Lcom/android/server/am/-$$Lambda$SideScreenChangeNotificationController$zAWH5yGWzTSb9oqgDpb3jMiDV7w;

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

    invoke-static {p1, p2}, Lcom/android/server/am/SideScreenChangeNotificationController;->lambda$new$4(Lcom/samsung/android/multiwindow/ISideScreenEventListener;Landroid/os/Message;)V

    return-void
.end method
