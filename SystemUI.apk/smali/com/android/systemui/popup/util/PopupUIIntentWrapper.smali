.class public Lcom/android/systemui/popup/util/PopupUIIntentWrapper;
.super Ljava/lang/Object;
.source "PopupUIIntentWrapper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAction(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method
