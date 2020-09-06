.class public final synthetic Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$TdnTb--J77DBg6SCewmWLB1iBgQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SamsungWindowManagerService;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$TdnTb--J77DBg6SCewmWLB1iBgQ;->f$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$TdnTb--J77DBg6SCewmWLB1iBgQ;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$TdnTb--J77DBg6SCewmWLB1iBgQ;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$TdnTb--J77DBg6SCewmWLB1iBgQ;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$TdnTb--J77DBg6SCewmWLB1iBgQ;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$TdnTb--J77DBg6SCewmWLB1iBgQ;->f$0:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$TdnTb--J77DBg6SCewmWLB1iBgQ;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$TdnTb--J77DBg6SCewmWLB1iBgQ;->f$2:Z

    iget-object v3, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$TdnTb--J77DBg6SCewmWLB1iBgQ;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$TdnTb--J77DBg6SCewmWLB1iBgQ;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/SamsungWindowManagerService;->lambda$updateDisplaySettings$0(Lcom/android/server/wm/SamsungWindowManagerService;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method
