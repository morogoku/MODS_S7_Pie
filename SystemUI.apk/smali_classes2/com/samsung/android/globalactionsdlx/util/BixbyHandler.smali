.class public Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;
.super Ljava/lang/Object;
.source "BixbyHandler.java"


# instance fields
.field private final BIXBY_ACTION:Ljava/lang/String;

.field private final BIXBY_PACKAGE:Ljava/lang/String;

.field private final COG_BIXBYVERSION:Ljava/lang/String;

.field private final COG_BIXBY_RESULT_BY_POWER:Ljava/lang/String;

.field private final COG_BIXBY_RESULT_SUCCESS:I

.field private final COG_KEYEVENT:Ljava/lang/String;

.field private final DEVICEID_POWERKEY:I

.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BixbyHandler"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->TAG:Ljava/lang/String;

    const-string v0, "com.samsung.android.bixby.settings.action.POWER_KEY_SCREEN"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->BIXBY_ACTION:Ljava/lang/String;

    const-string v0, "com.samsung.android.bixby.agent"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->BIXBY_PACKAGE:Ljava/lang/String;

    const-string v0, "BIXBY_KEY_FW_VERSION"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->COG_BIXBYVERSION:Ljava/lang/String;

    const-string v0, "RESULT_BY_POWER"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->COG_BIXBY_RESULT_BY_POWER:Ljava/lang/String;

    const-string v0, "KEYEVENT"

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->COG_KEYEVENT:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->COG_BIXBY_RESULT_SUCCESS:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->DEVICEID_POWERKEY:I

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public startBixbyGlobalSettingsActivity(Ljava/lang/String;I)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.bixby.settings.action.POWER_KEY_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.bixby.agent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "theme"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v2, "BixbyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current Theme : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v2, "BixbyHandler"

    const-string v3, "Start BixbyInitialScreenService"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startBixbyVoiceService()V
    .registers 15

    new-instance v13, Landroid/view/KeyEvent;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, ""

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "KEYEVENT"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "BIXBY_KEY_FW_VERSION"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "RESULT_BY_POWER"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/util/BixbyHandler;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v4, "BixbyHandler"

    const-string v5, "Start BixbyService"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
