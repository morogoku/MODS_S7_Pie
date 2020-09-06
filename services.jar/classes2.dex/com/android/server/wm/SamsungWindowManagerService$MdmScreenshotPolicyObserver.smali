.class Lcom/android/server/wm/SamsungWindowManagerService$MdmScreenshotPolicyObserver;
.super Landroid/database/ContentObserver;
.source "SamsungWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MdmScreenshotPolicyObserver"
.end annotation


# instance fields
.field private final SCREENSHOT_MDM_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/wm/SamsungWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$MdmScreenshotPolicyObserver;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3/isScreenCaptureEnabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService$MdmScreenshotPolicyObserver;->SCREENSHOT_MDM_URI:Landroid/net/Uri;

    iget-object v0, p1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowManagerService$MdmScreenshotPolicyObserver;->SCREENSHOT_MDM_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService$MdmScreenshotPolicyObserver;->SCREENSHOT_MDM_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowManagerService$MdmScreenshotPolicyObserver;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    # invokes: Lcom/android/server/wm/SamsungWindowManagerService;->updateMdmScreenCapturePolicy(I)V
    invoke-static {v0, p3}, Lcom/android/server/wm/SamsungWindowManagerService;->access$300(Lcom/android/server/wm/SamsungWindowManagerService;I)V

    :cond_10
    return-void
.end method
