.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$iByXFcwi_Pj6P_6Arn3ScNDKAzg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$iByXFcwi_Pj6P_6Arn3ScNDKAzg;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$iByXFcwi_Pj6P_6Arn3ScNDKAzg;->f$1:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$iByXFcwi_Pj6P_6Arn3ScNDKAzg;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$iByXFcwi_Pj6P_6Arn3ScNDKAzg;->f$1:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$startPendingIntentDismissingKeyguard$50(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method
