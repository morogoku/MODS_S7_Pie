.class Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TakeScreenShotRunnable"
.end annotation


# instance fields
.field private mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;->mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;->mScreenshotInfo:Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->takeScreenshot(Lcom/android/server/policy/SamsungPhoneWindowManager$ScreenshotInfo;)V

    return-void
.end method
