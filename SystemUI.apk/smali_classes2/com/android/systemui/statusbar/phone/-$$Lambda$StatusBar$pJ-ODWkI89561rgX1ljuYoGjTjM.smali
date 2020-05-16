.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Landroid/app/PendingIntent;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Landroid/service/notification/StatusBarNotification;

.field private final synthetic f$5:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;ILjava/lang/String;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;->f$1:Landroid/app/PendingIntent;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;->f$4:Landroid/service/notification/StatusBarNotification;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;->f$5:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;->f$1:Landroid/app/PendingIntent;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;->f$4:Landroid/service/notification/StatusBarNotification;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$pJ-ODWkI89561rgX1ljuYoGjTjM;->f$5:Landroid/service/notification/StatusBarNotification;

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$onHunDragEnd$55(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;ILjava/lang/String;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
