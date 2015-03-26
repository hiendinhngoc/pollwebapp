Rails.application.config.middleware.use OmniAuth::Builder do
	provider	:facebook,
				'809207902448757', '552eb4be4bc19111712da4420a31b3e2',
				scope: 'public_profile', display: 'page', image_size: 'square'
end