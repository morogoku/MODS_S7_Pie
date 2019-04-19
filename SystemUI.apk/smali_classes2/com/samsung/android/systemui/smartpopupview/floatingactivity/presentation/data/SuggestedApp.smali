.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;
.super Ljava/lang/Object;
.source "SuggestedApp.java"


# instance fields
.field mDefaultOn:Z

.field mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;->mPackageName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;->mDefaultOn:Z

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/presentation/data/SuggestedApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
