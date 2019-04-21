.class public Lcom/samsung/android/globalactionsdlx/presentation/view/DefaultResourceFactory;
.super Ljava/lang/Object;
.source "DefaultResourceFactory.java"

# interfaces
.implements Lcom/samsung/android/globalactionsdlx/presentation/view/ResourceFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResourceID(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_1fa

    goto/16 :goto_17b

    :sswitch_a
    const-string/jumbo v0, "sec_global_actions_wrapped"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/4 v0, 0x4

    goto/16 :goto_17c

    :sswitch_16
    const-string/jumbo v0, "tw_ic_do_restart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x14

    goto/16 :goto_17c

    :sswitch_23
    const-string/jumbo v0, "sec_global_actions_description_text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0xd

    goto/16 :goto_17c

    :sswitch_30
    const-string/jumbo v0, "sec_global_actions_icon_ripple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x1a

    goto/16 :goto_17c

    :sswitch_3d
    const-string v0, "device_ic_clover_view_cover"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0xf

    goto/16 :goto_17c

    :sswitch_49
    const-string v0, "device_ic_dark_theme_samsung"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x10

    goto/16 :goto_17c

    :sswitch_55
    const-string/jumbo v0, "sec_global_actions_description"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0xa

    goto/16 :goto_17c

    :sswitch_62
    const-string/jumbo v0, "tw_ic_do_lockdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x16

    goto/16 :goto_17c

    :sswitch_6f
    const-string/jumbo v0, "tw_ic_do_safemode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x13

    goto/16 :goto_17c

    :sswitch_7c
    const-string/jumbo v0, "tw_ic_do_emergencymode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x15

    goto/16 :goto_17c

    :sswitch_89
    const-string/jumbo v0, "sec_global_actions_bottomview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/4 v0, 0x5

    goto/16 :goto_17c

    :sswitch_95
    const-string/jumbo v0, "sec_global_actions_bottomtextview_bottom_margin_landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x1d

    goto/16 :goto_17c

    :sswitch_a2
    const-string v0, "device_ic_white_theme_samsung"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x11

    goto/16 :goto_17c

    :sswitch_ae
    const-string/jumbo v0, "tw_ic_do_mobiledata"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x17

    goto/16 :goto_17c

    :sswitch_bb
    const-string/jumbo v0, "sec_global_actions_icon_label_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0xb

    goto/16 :goto_17c

    :sswitch_c8
    const-string/jumbo v0, "sec_global_actions_item_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    move v0, v1

    goto/16 :goto_17c

    :sswitch_d4
    const-string/jumbo v0, "sec_global_actions_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x9

    goto/16 :goto_17c

    :sswitch_e1
    const-string/jumbo v0, "sec_global_actions_label"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0xc

    goto/16 :goto_17c

    :sswitch_ee
    const-string/jumbo v0, "tw_ic_do_poweroff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x12

    goto/16 :goto_17c

    :sswitch_fb
    const-string/jumbo v0, "sec_global_actions_icon_bg_focused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x19

    goto/16 :goto_17c

    :sswitch_108
    const-string/jumbo v0, "sec_global_actions_bottomtextview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/4 v0, 0x7

    goto :goto_17c

    :sswitch_113
    const-string/jumbo v0, "sec_global_actions_bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/4 v0, 0x2

    goto :goto_17c

    :sswitch_11e
    const-string/jumbo v0, "sec_global_actions_bottomtextview_bottom_margin_portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x1c

    goto :goto_17c

    :sswitch_12a
    const-string/jumbo v0, "sec_global_actions_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x8

    goto :goto_17c

    :sswitch_136
    const-string/jumbo v0, "sec_global_actions_icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0xe

    goto :goto_17c

    :sswitch_142
    const-string/jumbo v0, "sec_global_actions_bottompetview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/4 v0, 0x6

    goto :goto_17c

    :sswitch_14d
    const-string/jumbo v0, "sec_global_actions_force_restart_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x1b

    goto :goto_17c

    :sswitch_159
    const-string/jumbo v0, "sec_global_actions_item_list_land"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/4 v0, 0x1

    goto :goto_17c

    :sswitch_164
    const-string/jumbo v0, "tw_ic_do_bikemode_square"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/16 v0, 0x18

    goto :goto_17c

    :sswitch_170
    const-string/jumbo v0, "sec_global_actions_confirmation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    const/4 v0, 0x3

    goto :goto_17c

    :cond_17b
    :goto_17b
    const/4 v0, -0x1

    :goto_17c
    packed-switch v0, :pswitch_data_274

    return v1

    :pswitch_180
    const v0, 0x105022d

    return v0

    :pswitch_184
    const v0, 0x105022e

    return v0

    :pswitch_188
    const v0, 0x10e0130

    return v0

    :pswitch_18c
    const v0, 0x1080810

    return v0

    :pswitch_190
    const v0, 0x108080f

    return v0

    :pswitch_194
    const v0, 0x1080b4a

    return v0

    :pswitch_198
    const v0, 0x1080b52

    return v0

    :pswitch_19c
    const v0, 0x1080b51

    return v0

    :pswitch_1a0
    const v0, 0x1080b4e

    return v0

    :pswitch_1a4
    const v0, 0x1080b57

    return v0

    :pswitch_1a8
    const v0, 0x1080b5c

    return v0

    :pswitch_1ac
    const v0, 0x1080b53

    return v0

    :pswitch_1b0
    const v0, 0x10802b5

    return v0

    :pswitch_1b4
    const v0, 0x10802b3

    return v0

    :pswitch_1b8
    const v0, 0x10802b2

    return v0

    :pswitch_1bc
    const v0, 0x10204a1

    return v0

    :pswitch_1c0
    const v0, 0x10204a0

    return v0

    :pswitch_1c4
    const v0, 0x10204a5

    return v0

    :pswitch_1c8
    const v0, 0x10204a2

    return v0

    :pswitch_1cc
    const v0, 0x102049f

    return v0

    :pswitch_1d0
    const v0, 0x10204a6

    return v0

    :pswitch_1d4
    const v0, 0x1090100

    return v0

    :pswitch_1d8
    const v0, 0x10900fe

    return v0

    :pswitch_1dc
    const v0, 0x10900fd

    return v0

    :pswitch_1e0
    const v0, 0x10900ff

    return v0

    :pswitch_1e4
    const v0, 0x1090101

    return v0

    :pswitch_1e8
    const v0, 0x102049e

    return v0

    :pswitch_1ec
    const v0, 0x102049c

    return v0

    :pswitch_1f0
    const v0, 0x10204a4

    return v0

    :pswitch_1f4
    const v0, 0x10204a3

    return v0

    nop

    nop

    :sswitch_data_1fa
    .sparse-switch
        -0x7f247f9b -> :sswitch_170
        -0x76941473 -> :sswitch_164
        -0x739b1110 -> :sswitch_159
        -0x7256dbff -> :sswitch_14d
        -0x62cd7a77 -> :sswitch_142
        -0x5c829f57 -> :sswitch_136
        -0x5c8260bd -> :sswitch_12a
        -0x542f7736 -> :sswitch_11e
        -0x519e8da5 -> :sswitch_113
        -0x509ff753 -> :sswitch_108
        -0x416fb52d -> :sswitch_fb
        -0x367d66eb -> :sswitch_ee
        -0x33a81f3c -> :sswitch_e1
        -0x333cd99f -> :sswitch_d4
        -0x331023e6 -> :sswitch_c8
        -0x32c5319a -> :sswitch_bb
        -0x264658a9 -> :sswitch_ae
        -0x223350ae -> :sswitch_a2
        -0x1ff93494 -> :sswitch_95
        -0x1e6df880 -> :sswitch_89
        -0x13207937 -> :sswitch_7c
        -0x75c685 -> :sswitch_6f
        0x82b2b18 -> :sswitch_62
        0xcf149cc -> :sswitch_55
        0x130ab897 -> :sswitch_49
        0x303ab4c3 -> :sswitch_3d
        0x5451f286 -> :sswitch_30
        0x5501f3c0 -> :sswitch_23
        0x5f0a49e4 -> :sswitch_16
        0x78c0b255 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_274
    .packed-switch 0x0
        :pswitch_1f4
        :pswitch_1f0
        :pswitch_1ec
        :pswitch_1e8
        :pswitch_1e4
        :pswitch_1e0
        :pswitch_1dc
        :pswitch_1d8
        :pswitch_1d4
        :pswitch_1d0
        :pswitch_1cc
        :pswitch_1c8
        :pswitch_1c4
        :pswitch_1c0
        :pswitch_1bc
        :pswitch_1b8
        :pswitch_1b4
        :pswitch_1b0
        :pswitch_1ac
        :pswitch_1a8
        :pswitch_1a4
        :pswitch_1a0
        :pswitch_19c
        :pswitch_198
        :pswitch_194
        :pswitch_190
        :pswitch_18c
        :pswitch_188
        :pswitch_184
        :pswitch_180
    .end packed-switch
.end method
