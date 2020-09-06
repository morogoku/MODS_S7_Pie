.class Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;
.super Ljava/lang/Object;
.source "SideScreenChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SideScreenChangeNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuVisibilityChangeItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

.field visible:Z

.field windowingMode:I


# direct methods
.method constructor <init>(Lcom/android/server/am/SideScreenChangeNotificationController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method set(IZ)V
    .registers 3

    iput p1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;->windowingMode:I

    iput-boolean p2, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MenuVisibilityChangeItem;->visible:Z

    return-void
.end method
