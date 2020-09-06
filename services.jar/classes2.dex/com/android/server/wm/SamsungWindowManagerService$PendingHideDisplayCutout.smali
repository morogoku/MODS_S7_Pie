.class Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;
.super Ljava/lang/Object;
.source "SamsungWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingHideDisplayCutout"
.end annotation


# instance fields
.field height:I

.field final synthetic this$0:Lcom/android/server/wm/SamsungWindowManagerService;

.field width:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;II)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;->width:I

    iput p3, p0, Lcom/android/server/wm/SamsungWindowManagerService$PendingHideDisplayCutout;->height:I

    return-void
.end method
