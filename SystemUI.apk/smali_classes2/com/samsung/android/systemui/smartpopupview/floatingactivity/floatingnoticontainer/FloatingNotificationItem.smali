.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;
.super Ljava/lang/Object;
.source "FloatingNotificationItem.java"


# instance fields
.field private mAnimationCompleted:Z

.field private mApplicationIcon:Landroid/graphics/drawable/Drawable;

.field private mCircleNotiIcon:Landroid/graphics/drawable/Drawable;

.field private mConvertIconColor:Z

.field private mNotiIonCompleted:Z

.field private mNotificationIcon:Landroid/graphics/drawable/Drawable;

.field private mNotificationKey:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mAnimationCompleted:Z

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mNotiIonCompleted:Z

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mNotificationIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mNotificationKey:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mNotiIonCompleted:Z

    iput-object p5, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mApplicationIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean p7, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mConvertIconColor:Z

    return-void
.end method


# virtual methods
.method public getApplicationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mApplicationIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCircleNotiIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mCircleNotiIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getNotificationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mNotificationIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getNotificationKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public isConvertIconColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mConvertIconColor:Z

    return v0
.end method

.method public readyToAddItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mNotiIonCompleted:Z

    return v0
.end method

.method public setCircleNotiIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mCircleNotiIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setConvertIconColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mConvertIconColor:Z

    return-void
.end method

.method public setNotiIonCompleted()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mNotiIonCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mNotiIonCompleted:Z

    :cond_0
    return-void
.end method

.method public setNotificationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mNotificationIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setNotificationKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mNotificationKey:Ljava/lang/String;

    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationItem;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method
