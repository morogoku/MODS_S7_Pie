.class public Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;
.super Ljava/lang/Object;
.source "DataConnectionDataLimitDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/popup/util/PopupUILogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/popup/util/PopupUILogWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    return-void
.end method

.method public isShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    iget-object v8, v7, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.systemui"

    const-string v8, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string v6, "DataConnectionDataLimitDialog"

    const-string/jumbo v7, "showDataConnectionNotifications() : hasPolicy is false"

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mLogWrapper:Lcom/android/systemui/popup/util/PopupUILogWrapper;

    const-string v3, "DataConnectionDataLimitDialog"

    const-string/jumbo v4, "showDataConnectionNotifications() : Failed TelephonyManager.getSubscriberId"

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/popup/util/PopupUILogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
