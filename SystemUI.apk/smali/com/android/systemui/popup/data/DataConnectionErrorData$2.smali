.class Lcom/android/systemui/popup/data/DataConnectionErrorData$2;
.super Ljava/lang/Object;
.source "DataConnectionErrorData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButtonClickListener(Landroid/content/Context;IZLandroid/app/PendingIntent;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/data/DataConnectionErrorData;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$2;->this$0:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iput-object p2, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$2;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method
